.class public abstract Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"


# static fields
.field public static final sLogger:Lcom/android/server/wm/BoundsCompatStatusLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/BoundsCompatStatusLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;-><init>(Lcom/android/server/wm/BoundsCompatStatusLogger-IA;)V

    sput-object v0, Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;->sLogger:Lcom/android/server/wm/BoundsCompatStatusLogger;

    return-void
.end method
