# from django.shortcuts import render
from .models import Person, State, City, District
from .forms import PersonCreationForm
from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse
from django.views.generic import ListView, CreateView
# from .models import Person


class PrintListView(ListView):
    model = Person
    template_name = 'home.html'


def person_create_view(request):
    form = PersonCreationForm()
    if request.method == 'POST':
        form = PersonCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
    return render(request, 'post_new.html', {'form': form})


def person_update_view(request, pk):
    person = get_object_or_404(Person, pk=pk)
    form = PersonCreationForm(instance=person)
    if request.method == 'POST':
        form = PersonCreationForm(request.POST, instance=person)
        if form.is_valid():
            form.save()
            return redirect('home', pk=pk)
    return render(request, 'post_new.html', {'form': form})


# AJAX
def load_states(request):
    country_id = request.GET.get('country_id')
    states = State.objects.filter(country_id=country_id).all()
    return JsonResponse(list(states.values('id', 'name')), safe=False)


def load_districts(request):
    state_id = request.GET.get('state_id')
    districts = District.objects.filter(state_id=state_id).all()
    return JsonResponse(list(districts.values('id', 'name')), safe=False)


def load_cities(request):
    district_id = request.GET.get('district_id')
    cities = City.objects.filter(district_id=district_id).all()
    return JsonResponse(list(cities.values('id', 'name')), safe=False)
