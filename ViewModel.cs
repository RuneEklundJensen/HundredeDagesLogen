using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HundredeDagesLogen
{
    public class ViewModel
    {      
        private string WebApiBaseUrl;
        private string UriBetalinger;
        private string UriMedlemmer;
        private string UriMoeder;
        private string UriPhotoAlbums;
        private string UriImages;
        private string UriVersion;

        private int PageSize = -1;
        private int BetalingerPage = -1;

        public Views Views;
        public Data Data;


        public void Ready()
        {

        }

        public ViewModel(string webApiBaseUrl, int pageSize)
        {

        }

        public void FlushData()
        {
        }


        public void GetData(string token)
        {
        }



        public void SetSelectedMedlem(int memberId)
        { }


        public void SetSelectedPhotoAlbum(string selectedPhotoAlbum)
        { }
        

        public void AddBetalingerToViewAtPage(int page)
        { }


        private void AddPhotosToViewFromPhotoAlbum(string selectedPhotoAlbum)
        { }


        //private void ReplaceImagesWithHiresVersion(): 

        //    private static GetFullName(medlemmer: Array<Medlem>, memberId: number): string {

        private void AddAllMedlemmerToView()
        { }

        private void AddAllPhotoAlbumsToView()
        { }

        private void AddAllMoederToView()
        { }        
    }

    public class Data
    {
        public Medlem[] Medlemmer;
        public Betaling[] Betalinger;
        public Moede[] Moeder;
        public string[] PhotoAlbums;
        public ImageInfo[] Photos;
        public string Version;

        public int GetNumberOfFinancesPages()
        { return 4; }
    }

    public class Views
    {
        public Observable Version;
        public ObservableArray Betalinger;
        public ObservableArray Moeder;
        public ObservableArray Medlemmer;
        public Observable Medlem;

        public ObservableArray PhotoAlbums;
        public Observable PhotoAlbum;
        public ObservableArray Photos;

        public void AddPhoto()
        {

        }

        public void AddPhotoAlbum(string photoAlbum)
        {

        }

        public void AddBetaling()
        {

        }

        public void AddMoede()
        {
        }
    }

    public class ImageInfo
    {
        public int No;
        public string Name;
        public string PhotoAlbum;
        public int[] Image;
        public int[] ThumbnailImage;

    }

    public class Betaling
    {
        public int No;
        public DateTime Dato;
        public int MemberId;
        public string Tekst;
        public int Beloeb;
    }

    public class ObservableBetaling
    {
        public string Dato;
        public string MemberId;
        public string Indbetaler;
        public string Tekst;
        public string Beloeb;
        public string Saldo;
    }

    public class Medlem
    {
        public string MemberId;
        public string Fornavn;
        public string Efternavn;
        public string Adresse1;
        public string Adresse2;
        public string Tlf;
        public string Email;
    }

    public class ObservableMedlem
    {
        public string FullName;
        public string MemberId;
        public string Adresse1;
        public string Adresse2;
        public string Tlf;
        public string Email;
        public string FaceImageUrl;
    }

    public class Moede
    {
        //public No: number;
        //public MemberId: number;
        //public Dato: Date;
        //public Event: string;

        //constructor(no: number, memberId: number, dato: Date, event: string) {
        //    this.No = no;
        //    this.MemberId = memberId;
        //    this.Dato = dato;
        //    this.Event = event;
        //}
    }

    public class ObservableMoede
    {
        public string Dato;
        public int MemberId;
        public string Arrangoer;
        public string Event;        
    }

    public class ObservableArray
    {
    }

    public class Observable
    {
    }
}

