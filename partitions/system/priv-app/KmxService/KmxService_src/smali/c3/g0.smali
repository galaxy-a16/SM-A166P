.class public final Lc3/g0;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc3/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:[La3/d;

.field public final c:I

.field public final d:Lc3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, Lc3/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[La3/d;ILc3/g;)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, Lc3/g0;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lc3/g0;->b:[La3/d;

    iput p3, p0, Lc3/g0;->c:I

    iput-object p4, p0, Lc3/g0;->d:Lc3/g;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lc3/g0;->a:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->G(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lc3/g0;->b:[La3/d;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->M(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget v2, p0, Lc3/g0;->c:I

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object p0, p0, Lc3/g0;->d:Lc3/g;

    invoke-static {p1, v1, p0, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
