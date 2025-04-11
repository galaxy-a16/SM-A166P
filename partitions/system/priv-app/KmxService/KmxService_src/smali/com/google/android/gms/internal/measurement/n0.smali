.class public final Lcom/google/android/gms/internal/measurement/n0;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/n0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/os/Bundle;

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/o0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/n0;->a:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/n0;->b:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/n0;->c:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/n0;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/n0;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/n0;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/n0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/n0;->a:J

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/n0;->b:J

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/n0;->c:Z

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n0;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n0;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n0;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->G(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v0, 0x8

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/n0;->h:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
