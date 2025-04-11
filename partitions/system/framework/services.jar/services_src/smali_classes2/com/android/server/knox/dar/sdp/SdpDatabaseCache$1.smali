.class Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;
.super Ljava/util/LinkedHashMap;
.source "SdpDatabaseCache.java"


# static fields
.field private static final serialVersionUID:J = -0x5abdaf4ca421d56aL


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;->this$0:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
