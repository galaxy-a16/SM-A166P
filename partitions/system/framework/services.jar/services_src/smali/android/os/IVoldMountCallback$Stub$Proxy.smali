.class public Landroid/os/IVoldMountCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoldMountCallback.java"

# interfaces
.implements Landroid/os/IVoldMountCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/os/IVoldMountCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/os/IVoldMountCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "android.os.IVoldMountCallback"

    return-object p0
.end method

.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 101
    invoke-virtual {p0}, Landroid/os/IVoldMountCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.os.IVoldMountCallback"

    .line 105
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Landroid/os/IVoldMountCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    throw p0
.end method
