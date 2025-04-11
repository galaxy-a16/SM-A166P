.class public final Lcom/google/android/gms/internal/measurement/j0;
.super Ll3/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/k0;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Ll3/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 2

    invoke-virtual {p0}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ll3/a;->d(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
