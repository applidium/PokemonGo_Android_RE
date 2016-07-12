.class public interface abstract Lcom/google/android/gms/location/places/Place;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/location/places/Place;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ACCOUNTING:I = 0x1

.field public static final TYPE_ADMINISTRATIVE_AREA_LEVEL_1:I = 0x3e9

.field public static final TYPE_ADMINISTRATIVE_AREA_LEVEL_2:I = 0x3ea

.field public static final TYPE_ADMINISTRATIVE_AREA_LEVEL_3:I = 0x3eb

.field public static final TYPE_AIRPORT:I = 0x2

.field public static final TYPE_AMUSEMENT_PARK:I = 0x3

.field public static final TYPE_AQUARIUM:I = 0x4

.field public static final TYPE_ART_GALLERY:I = 0x5

.field public static final TYPE_ATM:I = 0x6

.field public static final TYPE_BAKERY:I = 0x7

.field public static final TYPE_BANK:I = 0x8

.field public static final TYPE_BAR:I = 0x9

.field public static final TYPE_BEAUTY_SALON:I = 0xa

.field public static final TYPE_BICYCLE_STORE:I = 0xb

.field public static final TYPE_BOOK_STORE:I = 0xc

.field public static final TYPE_BOWLING_ALLEY:I = 0xd

.field public static final TYPE_BUS_STATION:I = 0xe

.field public static final TYPE_CAFE:I = 0xf

.field public static final TYPE_CAMPGROUND:I = 0x10

.field public static final TYPE_CAR_DEALER:I = 0x11

.field public static final TYPE_CAR_RENTAL:I = 0x12

.field public static final TYPE_CAR_REPAIR:I = 0x13

.field public static final TYPE_CAR_WASH:I = 0x14

.field public static final TYPE_CASINO:I = 0x15

.field public static final TYPE_CEMETERY:I = 0x16

.field public static final TYPE_CHURCH:I = 0x17

.field public static final TYPE_CITY_HALL:I = 0x18

.field public static final TYPE_CLOTHING_STORE:I = 0x19

.field public static final TYPE_COLLOQUIAL_AREA:I = 0x3ec

.field public static final TYPE_CONVENIENCE_STORE:I = 0x1a

.field public static final TYPE_COUNTRY:I = 0x3ed

.field public static final TYPE_COURTHOUSE:I = 0x1b

.field public static final TYPE_DENTIST:I = 0x1c

.field public static final TYPE_DEPARTMENT_STORE:I = 0x1d

.field public static final TYPE_DOCTOR:I = 0x1e

.field public static final TYPE_ELECTRICIAN:I = 0x1f

.field public static final TYPE_ELECTRONICS_STORE:I = 0x20

.field public static final TYPE_EMBASSY:I = 0x21

.field public static final TYPE_ESTABLISHMENT:I = 0x22

.field public static final TYPE_FINANCE:I = 0x23

.field public static final TYPE_FIRE_STATION:I = 0x24

.field public static final TYPE_FLOOR:I = 0x3ee

.field public static final TYPE_FLORIST:I = 0x25

.field public static final TYPE_FOOD:I = 0x26

.field public static final TYPE_FUNERAL_HOME:I = 0x27

.field public static final TYPE_FURNITURE_STORE:I = 0x28

.field public static final TYPE_GAS_STATION:I = 0x29

.field public static final TYPE_GENERAL_CONTRACTOR:I = 0x2a

.field public static final TYPE_GEOCODE:I = 0x3ef

.field public static final TYPE_GROCERY_OR_SUPERMARKET:I = 0x2b

.field public static final TYPE_GYM:I = 0x2c

.field public static final TYPE_HAIR_CARE:I = 0x2d

.field public static final TYPE_HARDWARE_STORE:I = 0x2e

.field public static final TYPE_HEALTH:I = 0x2f

.field public static final TYPE_HINDU_TEMPLE:I = 0x30

.field public static final TYPE_HOME_GOODS_STORE:I = 0x31

.field public static final TYPE_HOSPITAL:I = 0x32

.field public static final TYPE_INSURANCE_AGENCY:I = 0x33

.field public static final TYPE_INTERSECTION:I = 0x3f0

.field public static final TYPE_JEWELRY_STORE:I = 0x34

.field public static final TYPE_LAUNDRY:I = 0x35

.field public static final TYPE_LAWYER:I = 0x36

.field public static final TYPE_LIBRARY:I = 0x37

.field public static final TYPE_LIQUOR_STORE:I = 0x38

.field public static final TYPE_LOCALITY:I = 0x3f1

.field public static final TYPE_LOCAL_GOVERNMENT_OFFICE:I = 0x39

.field public static final TYPE_LOCKSMITH:I = 0x3a

.field public static final TYPE_LODGING:I = 0x3b

.field public static final TYPE_MEAL_DELIVERY:I = 0x3c

.field public static final TYPE_MEAL_TAKEAWAY:I = 0x3d

.field public static final TYPE_MOSQUE:I = 0x3e

.field public static final TYPE_MOVIE_RENTAL:I = 0x3f

.field public static final TYPE_MOVIE_THEATER:I = 0x40

.field public static final TYPE_MOVING_COMPANY:I = 0x41

.field public static final TYPE_MUSEUM:I = 0x42

.field public static final TYPE_NATURAL_FEATURE:I = 0x3f2

.field public static final TYPE_NEIGHBORHOOD:I = 0x3f3

.field public static final TYPE_NIGHT_CLUB:I = 0x43

.field public static final TYPE_OTHER:I = 0x0

.field public static final TYPE_PAINTER:I = 0x44

.field public static final TYPE_PARK:I = 0x45

.field public static final TYPE_PARKING:I = 0x46

.field public static final TYPE_PET_STORE:I = 0x47

.field public static final TYPE_PHARMACY:I = 0x48

.field public static final TYPE_PHYSIOTHERAPIST:I = 0x49

.field public static final TYPE_PLACE_OF_WORSHIP:I = 0x4a

.field public static final TYPE_PLUMBER:I = 0x4b

.field public static final TYPE_POINT_OF_INTEREST:I = 0x3f5

.field public static final TYPE_POLICE:I = 0x4c

.field public static final TYPE_POLITICAL:I = 0x3f4

.field public static final TYPE_POSTAL_CODE:I = 0x3f7

.field public static final TYPE_POSTAL_CODE_PREFIX:I = 0x3f8

.field public static final TYPE_POSTAL_TOWN:I = 0x3f9

.field public static final TYPE_POST_BOX:I = 0x3f6

.field public static final TYPE_POST_OFFICE:I = 0x4d

.field public static final TYPE_PREMISE:I = 0x3fa

.field public static final TYPE_REAL_ESTATE_AGENCY:I = 0x4e

.field public static final TYPE_RESTAURANT:I = 0x4f

.field public static final TYPE_ROOFING_CONTRACTOR:I = 0x50

.field public static final TYPE_ROOM:I = 0x3fb

.field public static final TYPE_ROUTE:I = 0x3fc

.field public static final TYPE_RV_PARK:I = 0x51

.field public static final TYPE_SCHOOL:I = 0x52

.field public static final TYPE_SHOE_STORE:I = 0x53

.field public static final TYPE_SHOPPING_MALL:I = 0x54

.field public static final TYPE_SPA:I = 0x55

.field public static final TYPE_STADIUM:I = 0x56

.field public static final TYPE_STORAGE:I = 0x57

.field public static final TYPE_STORE:I = 0x58

.field public static final TYPE_STREET_ADDRESS:I = 0x3fd

.field public static final TYPE_SUBLOCALITY:I = 0x3fe

.field public static final TYPE_SUBLOCALITY_LEVEL_1:I = 0x3ff

.field public static final TYPE_SUBLOCALITY_LEVEL_2:I = 0x400

.field public static final TYPE_SUBLOCALITY_LEVEL_3:I = 0x401

.field public static final TYPE_SUBLOCALITY_LEVEL_4:I = 0x402

.field public static final TYPE_SUBLOCALITY_LEVEL_5:I = 0x403

.field public static final TYPE_SUBPREMISE:I = 0x404

.field public static final TYPE_SUBWAY_STATION:I = 0x59

.field public static final TYPE_SYNAGOGUE:I = 0x5a

.field public static final TYPE_SYNTHETIC_GEOCODE:I = 0x405

.field public static final TYPE_TAXI_STAND:I = 0x5b

.field public static final TYPE_TRAIN_STATION:I = 0x5c

.field public static final TYPE_TRANSIT_STATION:I = 0x406

.field public static final TYPE_TRAVEL_AGENCY:I = 0x5d

.field public static final TYPE_UNIVERSITY:I = 0x5e

.field public static final TYPE_VETERINARY_CARE:I = 0x5f

.field public static final TYPE_ZOO:I = 0x60


# virtual methods
.method public abstract getAddress()Ljava/lang/CharSequence;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLatLng()Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getName()Ljava/lang/CharSequence;
.end method

.method public abstract getPhoneNumber()Ljava/lang/CharSequence;
.end method

.method public abstract getPlaceTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPriceLevel()I
.end method

.method public abstract getRating()F
.end method

.method public abstract getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
.end method

.method public abstract getWebsiteUri()Landroid/net/Uri;
.end method
