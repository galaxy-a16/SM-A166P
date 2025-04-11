.class Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;",
        "Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
