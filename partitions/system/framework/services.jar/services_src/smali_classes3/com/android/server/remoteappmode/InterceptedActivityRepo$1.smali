.class Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;
.super Ljava/util/LinkedHashMap;
.source "InterceptedActivityRepo.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;->this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
