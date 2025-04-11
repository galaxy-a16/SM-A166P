.class public final Landroid/hardware/usb/AltModeData;
.super Ljava/lang/Object;
.source "AltModeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/hardware/usb/AltModeData$1;

    invoke-direct {v0}, Landroid/hardware/usb/AltModeData$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/AltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/usb/AltModeData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/usb/AltModeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .locals 0

    .line 117
    iput p1, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 118
    iput-object p2, p0, Landroid/hardware/usb/AltModeData;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "displayPortAltModeData"

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getTag()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/usb/AltModeData;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr v1, p0

    :goto_0
    return v1
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 97
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/hardware/usb/AltModeData;->_assertTag(I)V

    .line 39
    iget-object p0, p0, Landroid/hardware/usb/AltModeData;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 28
    iget p0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/AltModeData;->_set(ILjava/lang/Object;)V

    return-void

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 64
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return-void
.end method
