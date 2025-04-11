.class Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$1;
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
        "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "chain"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "membership"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "blackboard"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "message"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
