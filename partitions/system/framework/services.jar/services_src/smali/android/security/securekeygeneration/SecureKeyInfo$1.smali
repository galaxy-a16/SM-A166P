.class public Landroid/security/securekeygeneration/SecureKeyInfo$1;
.super Ljava/lang/Object;
.source "SecureKeyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 0

    new-instance p0, Landroid/security/securekeygeneration/SecureKeyInfo;

    invoke-direct {p0}, Landroid/security/securekeygeneration/SecureKeyInfo;-><init>()V

    invoke-virtual {p0, p1}, Landroid/security/securekeygeneration/SecureKeyInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/securekeygeneration/SecureKeyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 0

    new-array p0, p1, [Landroid/security/securekeygeneration/SecureKeyInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/securekeygeneration/SecureKeyInfo$1;->newArray(I)[Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p0

    return-object p0
.end method
