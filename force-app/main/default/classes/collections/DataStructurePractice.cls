public class ApexDataStructure{

    public static void movieslist(){

        List<String> movielist = new List<String>{'Veer Zara', 'Border', 'Dhurandhar', 'The Hero', 'Lagaan'};
        movielist.add(1,'Intermission Break');
        movielist.add(0,'The Avengers');
        System.debug('Is Titanic Present : ' +movielist.contains('Titanic'));
        System.debug('Index value of Intermission Break is '+movielist.indexOf('Intermission Break'));
        movielist.remove(movielist.size()-1);
        System.debug(movielist);
    }

    public static void guest(){
        Set<String> guestSet = new Set<String>{'Alice', 'Bob', 'Charlie'};
        guestSet.add('Alice');
        guestSet.add('Diana');
        guestSet.add('Emma');
        guestSet.add('Frank');
        System.debug('Is Bob Coming to Party : '+guestSet.contains('Bob'));
        guestSet.remove('Charlie');
        guestSet.add('Alice');
        System.debug(guestSet);
    }

    
}