.class public final Lc3/u;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc3/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/os/IBinder;

.field public final c:La3/b;

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, Lc3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;La3/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput p1, p0, Lc3/u;->a:I

    iput-object p2, p0, Lc3/u;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lc3/u;->c:La3/b;

    iput-boolean p4, p0, Lc3/u;->d:Z

    iput-boolean p5, p0, Lc3/u;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lc3/u;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lc3/u;

    iget-object v2, p0, Lc3/u;->c:La3/b;

    iget-object v3, p1, Lc3/u;->c:La3/b;

    invoke-virtual {v2, v3}, La3/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    iget-object p0, p0, Lc3/u;->b:Landroid/os/IBinder;

    if-nez p0, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    sget v4, Lc3/a;->c:I

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lc3/j;

    if-eqz v5, :cond_4

    check-cast v4, Lc3/j;

    goto :goto_0

    :cond_4
    new-instance v4, Lc3/l0;

    invoke-direct {v4, p0}, Lc3/l0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object p0, p1, Lc3/u;->b:Landroid/os/IBinder;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget p1, Lc3/a;->c:I

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v2, p1, Lc3/j;

    if-eqz v2, :cond_6

    check-cast p1, Lc3/j;

    goto :goto_1

    :cond_6
    new-instance p1, Lc3/l0;

    invoke-direct {p1, p0}, Lc3/l0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    move-object v2, p1

    :goto_2
    invoke-static {v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lc3/u;->a:I

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lc3/u;->b:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->H(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc3/u;->c:La3/b;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lc3/u;->d:Z

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    iget-boolean p0, p0, Lc3/u;->e:Z

    invoke-static {p1, p2, p0}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
