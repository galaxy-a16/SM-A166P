.class public final Lc3/m;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc3/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, Lc3/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput p1, p0, Lc3/m;->a:I

    iput-boolean p2, p0, Lc3/m;->b:Z

    iput-boolean p3, p0, Lc3/m;->c:Z

    iput p4, p0, Lc3/m;->d:I

    iput p5, p0, Lc3/m;->e:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lc3/m;->a:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lc3/m;->b:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lc3/m;->c:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget v1, p0, Lc3/m;->d:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget p0, p0, Lc3/m;->e:I

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
