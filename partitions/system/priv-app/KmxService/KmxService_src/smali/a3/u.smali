.class public final La3/u;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La3/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:La3/n;

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La3/v;-><init>(I)V

    sput-object v0, La3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 4

    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, La3/u;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget v2, Lc3/n0;->c:I

    const-string v2, "com.google.android.gms.common.internal.ICertData"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc3/o0;

    if-eqz v3, :cond_1

    check-cast v2, Lc3/o0;

    goto :goto_0

    :cond_1
    new-instance v2, Lc3/m0;

    invoke-direct {v2, p2}, Lc3/m0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {v2}, Lc3/o0;->b()Li3/a;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Li3/b;->d(Li3/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_1
    if-eqz p2, :cond_3

    new-instance p1, La3/o;

    invoke-direct {p1, p2}, La3/o;-><init>([B)V

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-object p1, p0, La3/u;->b:La3/n;

    iput-boolean p3, p0, La3/u;->c:Z

    iput-boolean p4, p0, La3/u;->d:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, La3/u;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, La3/u;->b:La3/n;

    if-nez v0, :cond_0

    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/annotation/i0;->H(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x3

    iget-boolean v1, p0, La3/u;->c:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget-boolean p0, p0, La3/u;->d:Z

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
