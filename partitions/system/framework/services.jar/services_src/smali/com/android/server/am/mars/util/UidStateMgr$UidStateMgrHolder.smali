.class public abstract Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;
.super Ljava/lang/Object;
.source "UidStateMgr.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/util/UidStateMgr;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/server/am/mars/util/UidStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/UidStateMgr;-><init>(Lcom/android/server/am/mars/util/UidStateMgr-IA;)V

    sput-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    return-void
.end method
