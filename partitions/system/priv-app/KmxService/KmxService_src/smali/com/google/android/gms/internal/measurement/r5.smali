.class public final Lcom/google/android/gms/internal/measurement/r5;
.super Lcom/google/android/gms/internal/measurement/h;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Lp1/l;


# direct methods
.method public constructor <init>(Lp1/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/r5;->c:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r5;->d:Lp1/l;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lp1/l;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/measurement/r5;->c:I

    const-string p2, "internal.remoteConfig"

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r5;->d:Lp1/l;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/util/HashMap;

    new-instance p2, Lcom/google/android/gms/internal/measurement/r5;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Lp1/l;)V

    const-string p1, "getValue"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/r5;->c:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    return-object p0

    :pswitch_0
    const-string v0, "getValue"

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r5;->d:Lp1/l;

    iget-object v0, p0, Lp1/l;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/o3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->d:Ll/b;

    iget-object p0, p0, Lp1/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/measurement/q;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
