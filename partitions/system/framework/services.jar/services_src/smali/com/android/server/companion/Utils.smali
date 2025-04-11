.class public abstract Lcom/android/server/companion/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
