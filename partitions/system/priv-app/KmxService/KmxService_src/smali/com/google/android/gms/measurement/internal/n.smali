.class public final Lcom/google/android/gms/measurement/internal/n;
.super Ld3/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La3/v;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Double;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/v5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/v5;-><init>(Lcom/google/android/gms/measurement/internal/n;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/annotation/i0;->G(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
