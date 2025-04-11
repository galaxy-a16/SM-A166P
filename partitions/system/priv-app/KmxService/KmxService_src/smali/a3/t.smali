.class public final La3/t;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La3/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, La3/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-boolean p4, p0, La3/t;->a:Z

    iput-object p3, p0, La3/t;->b:Ljava/lang/String;

    invoke-static {p1}, Lg2/m;->p(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La3/t;->c:I

    invoke-static {p2}, Lkotlin/jvm/internal/m;->v(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La3/t;->d:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, La3/t;->a:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, La3/t;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget v1, p0, La3/t;->c:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget p0, p0, La3/t;->d:I

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
