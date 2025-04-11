.class public abstract Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;
.super Ljava/lang/Object;
.source "BaseRestrictionMgr.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/BaseRestrictionMgr;
    .locals 1

    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseRestrictionMgr;-><init>(Lcom/android/server/am/BaseRestrictionMgr-IA;)V

    sput-object v0, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    return-void
.end method
