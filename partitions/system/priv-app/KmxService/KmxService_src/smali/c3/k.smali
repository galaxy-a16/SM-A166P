.class public final Lc3/k;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc3/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, Lc3/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput p1, p0, Lc3/k;->a:I

    iput p2, p0, Lc3/k;->b:I

    iput p3, p0, Lc3/k;->c:I

    iput-wide p4, p0, Lc3/k;->d:J

    iput-wide p6, p0, Lc3/k;->e:J

    iput-object p8, p0, Lc3/k;->f:Ljava/lang/String;

    iput-object p9, p0, Lc3/k;->g:Ljava/lang/String;

    iput p10, p0, Lc3/k;->h:I

    iput p11, p0, Lc3/k;->i:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lc3/k;->a:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lc3/k;->b:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lc3/k;->c:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lc3/k;->d:J

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lc3/k;->e:J

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget-object v1, p0, Lc3/k;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lc3/k;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x8

    iget v1, p0, Lc3/k;->h:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    iget p0, p0, Lc3/k;->i:I

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
