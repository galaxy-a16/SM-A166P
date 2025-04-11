.class public final synthetic Lw5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lw5/d;->a:I

    iput-object p1, p0, Lw5/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw5/d;->a:I

    iget-object p0, p0, Lw5/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p0, Lma/e;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->addAllSignatures(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    check-cast p1, Lt8/a;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->b(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Lt8/a;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lw5/q;

    check-cast p1, Lw5/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lw5/j;

    const-string v1, "Executor config"

    invoke-static {p1, v0, v1}, Lp9/d;->Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lw5/q;->f:Lw5/j;

    check-cast p0, Lw5/p;

    return-object p0

    :pswitch_3
    check-cast p0, Lw5/n;

    check-cast p1, Lw5/k;

    check-cast p0, Lw5/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lw5/k;

    const-string v1, "SSL config"

    invoke-static {p1, v0, v1}, Lp9/d;->a0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lw5/n;->c:Lw5/k;

    check-cast p0, Lw5/p;

    return-object p0

    :pswitch_4
    check-cast p0, Lw5/e;

    check-cast p1, Lx6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lx6/a;

    const-string v1, "Connect"

    invoke-static {p1, v0, v1}, Lp9/d;->Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lw5/e;->a:Lw5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li6/d;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    invoke-direct {v0, p0, p1}, Li6/d;-><init>(Lw5/h;Lx6/a;)V

    new-instance p0, Lio/reactivex/internal/observers/a;

    invoke-direct {p0}, Lio/reactivex/internal/observers/a;-><init>()V

    invoke-virtual {v0, p0}, Leb/t;->a(Leb/u;)V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk8/a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_1
    check-cast p0, Lxa/c;

    check-cast p1, Lwa/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v0

    iget v1, p1, Lwa/e;->a:I

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setIndex(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v1

    iget-object v2, p1, Lwa/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v1

    iget-object v2, p1, Lwa/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->setIndexedState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    iget p1, p1, Lwa/e;->d:I

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->setBlockStamp(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
