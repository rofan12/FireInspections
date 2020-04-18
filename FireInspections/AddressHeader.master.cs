using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddressHeader : System.Web.UI.MasterPage
{
    #region Properties
        public Label lblSiteAddress
        {
            get
            {
                return SiteAddress;
            }
        }
        public Label lblTLID
        {
            get
            {
                return TLNO;
            }
        }
        public Label lblDescription
        {
            get
            {
                return Description;
            }
        }
        public Label lblStatus
        {
            get
            {
                return Status;
            }
        }
        public Label lblCity
        {
            get
            {
                return City;
            }
        }
        public Label lblState
        {
            get
            {
                return State;
            }
        }
        public Label lblZip
        {
            get
            {
                return Zip;
            }
        }
        public Label lblINSPZone
        {
            get
            {
                return INSPZone;
            }
        }
        public Label lblOccupancy
        {
            get
            {
                return Occupancy;
            }
        }
        public Label lblJurisdiction
        {
            get
            {
                return Jurisdiction;
            }
        }
    #endregion
}
