.class public abstract Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;
.super Ljava/lang/Object;
.source "ForegroundServiceMgr.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/util/ForegroundServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr-IA;)V

    sput-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    return-void
.end method
