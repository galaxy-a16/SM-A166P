.class public final Lc3/c0;
.super Lcom/google/android/gms/internal/common/f;
.source "SourceFile"


# instance fields
.field public c:Lc3/e;

.field public final d:I


# direct methods
.method public constructor <init>(Lc3/e;I)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc3/c0;->c:Lc3/e;

    iput p2, p0, Lc3/c0;->d:I

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "onPostInitComplete can be called only once per call to getRemoteService"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Lc3/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/common/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lc3/g0;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/g;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lc3/c0;->c:Lc3/e;

    const-string v6, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {p2, v6}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object v5, p2, Lc3/e;->v:Lc3/g0;

    iget-object p2, v5, Lc3/g0;->a:Landroid/os/Bundle;

    iget-object v5, p0, Lc3/c0;->c:Lc3/e;

    invoke-static {v5, v2}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lc3/c0;->c:Lc3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lc3/e0;

    invoke-direct {v5, v2, p1, v4, p2}, Lc3/e0;-><init>(Lc3/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, v2, Lc3/e;->f:Lc3/b0;

    iget p2, p0, Lc3/c0;->d:I

    invoke-virtual {p1, v3, p2, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v0, p0, Lc3/c0;->c:Lc3/e;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/common/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/g;->b(Landroid/os/Parcel;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/common/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/g;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lc3/c0;->c:Lc3/e;

    invoke-static {p2, v2}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lc3/c0;->c:Lc3/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lc3/e0;

    invoke-direct {v2, p2, p1, v4, v5}, Lc3/e0;-><init>(Lc3/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p2, Lc3/e;->f:Lc3/b0;

    iget p2, p0, Lc3/c0;->d:I

    invoke-virtual {p1, v3, p2, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v0, p0, Lc3/c0;->c:Lc3/e;

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v3
.end method
