.class public final La3/s;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La3/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/content/Context;

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, La3/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, La3/s;->a:Ljava/lang/String;

    iput-boolean p2, p0, La3/s;->b:Z

    iput-boolean p3, p0, La3/s;->c:Z

    invoke-static {p4}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object p1

    invoke-static {p1}, Li3/b;->d(Li3/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, La3/s;->d:Landroid/content/Context;

    iput-boolean p5, p0, La3/s;->e:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, La3/s;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-boolean v1, p0, La3/s;->b:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, La3/s;->c:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    new-instance v0, Li3/b;

    iget-object v1, p0, La3/s;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/annotation/i0;->H(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x5

    iget-boolean p0, p0, La3/s;->e:Z

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
