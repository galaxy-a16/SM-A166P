.class public abstract Landroid/net/ProvisioningConfigurationParcelable$_Parcel;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationParcelable.java"


# direct methods
.method public static bridge synthetic -$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroid/net/ProvisioningConfigurationParcelable$_Parcel;->writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    return-void
.end method

.method public static writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 182
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
