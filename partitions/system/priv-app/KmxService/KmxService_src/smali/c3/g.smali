.class public final Lc3/g;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc3/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lc3/m;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I

.field public final f:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, Lc3/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc3/m;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, Lc3/g;->a:Lc3/m;

    iput-boolean p2, p0, Lc3/g;->b:Z

    iput-boolean p3, p0, Lc3/g;->c:Z

    iput-object p4, p0, Lc3/g;->d:[I

    iput p5, p0, Lc3/g;->e:I

    iput-object p6, p0, Lc3/g;->f:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lc3/g;->a:Lc3/m;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    iget-boolean v1, p0, Lc3/g;->b:Z

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    iget-boolean v1, p0, Lc3/g;->c:Z

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lc3/g;->d:[I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    :goto_0
    const/4 p2, 0x5

    iget v1, p0, Lc3/g;->e:I

    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lc3/g;->f:[I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    :goto_1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
