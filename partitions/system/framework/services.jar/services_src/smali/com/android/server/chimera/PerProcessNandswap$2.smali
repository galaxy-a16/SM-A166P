.class Lcom/android/server/chimera/PerProcessNandswap$2;
.super Ljava/util/LinkedHashMap;
.source "PerProcessNandswap.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/chimera/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$2;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 508
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
