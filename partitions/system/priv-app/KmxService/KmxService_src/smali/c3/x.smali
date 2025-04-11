.class public final Lc3/x;
.super Ll3/a;
.source "SourceFile"

# interfaces
.implements Lc3/z;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ll3/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    invoke-virtual {p0}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ll3/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget v0, Lcom/google/android/gms/internal/common/g;->a:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
