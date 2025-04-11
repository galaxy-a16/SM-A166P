.class public final Lcom/google/android/gms/measurement/internal/c;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/measurement/internal/r5;

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Lcom/google/android/gms/measurement/internal/o;

.field public h:J

.field public i:Lcom/google/android/gms/measurement/internal/o;

.field public final j:J

.field public final k:Lcom/google/android/gms/measurement/internal/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La3/v;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld3/a;-><init>()V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/c;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/c;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->g:Lcom/google/android/gms/measurement/internal/o;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->g:Lcom/google/android/gms/measurement/internal/o;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/c;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/c;->h:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/c;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/c;->j:J

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/c;->g:Lcom/google/android/gms/measurement/internal/o;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/c;->h:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/c;->j:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->g:Lcom/google/android/gms/measurement/internal/o;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/c;->h:J

    invoke-static {p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    invoke-static {p1, v1, v2, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/c;->j:J

    invoke-static {p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    invoke-static {p1, v1, p0, p2}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
