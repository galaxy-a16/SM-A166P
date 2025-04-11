.class public abstract Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;
.super Ljava/lang/Object;
.source "FullScreenAppsSupportUtils.java"


# static fields
.field public static sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;-><init>(Lcom/samsung/android/server/util/FullScreenAppsSupportUtils-IA;)V

    sput-object v0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;->sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    return-void
.end method
