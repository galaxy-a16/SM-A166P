.class public final Lcom/google/android/gms/internal/measurement/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/h;

.field public final synthetic b:Lcom/google/firebase/messaging/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/h;Lcom/google/firebase/messaging/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u;->a:Lcom/google/android/gms/internal/measurement/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u;->b:Lcom/google/firebase/messaging/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of p0, p2, Lcom/google/android/gms/internal/measurement/r;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/r;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u;->a:Lcom/google/android/gms/internal/measurement/h;

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/n;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/u;->b:Lcom/google/firebase/messaging/r;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/h;->d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide p0

    double-to-int v1, p0

    :goto_0
    return v1
.end method
