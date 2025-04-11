.class public final Lcom/google/android/gms/internal/measurement/w7;
.super Lcom/google/android/gms/internal/measurement/h;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w7;->c:I

    const-string v0, "internal.platform"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/w7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/w7;-><init>(Ljava/lang/Object;)V

    const-string v1, "getVersion"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "silent"

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "unmonitored"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:I

    const-string p1, "getVersion"

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:I

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/g;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    :pswitch_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
