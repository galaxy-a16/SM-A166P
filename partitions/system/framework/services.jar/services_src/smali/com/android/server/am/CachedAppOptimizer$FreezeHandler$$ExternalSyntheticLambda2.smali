.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->$r8$lambda$aeOdvzaZPt2U8dqdNcklo7mIEwE(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
