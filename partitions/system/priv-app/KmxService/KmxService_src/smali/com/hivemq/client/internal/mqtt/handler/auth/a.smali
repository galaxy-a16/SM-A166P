.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->b(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method
