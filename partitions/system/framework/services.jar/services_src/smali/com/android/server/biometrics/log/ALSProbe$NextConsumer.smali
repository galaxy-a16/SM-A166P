.class public Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;
.super Ljava/lang/Object;
.source "ALSProbe.java"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public final mHandler:Landroid/os/Handler;

.field public final mOthers:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$N1MGkuOUqqp3S74zfFWKL59OCug(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->lambda$consume$0(F)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    .line 243
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mConsumer:Ljava/util/function/Consumer;

    .line 244
    iput-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/Handler;Lcom/android/server/biometrics/log/ALSProbe$NextConsumer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;-><init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$consume$0(F)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mConsumer:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consume(F)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mConsumer:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 253
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 254
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    goto :goto_1

    :cond_1
    return-void
.end method
