.class public abstract Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;
.super Ljava/lang/Object;
.source "FASDataManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/FASDataManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/android/server/am/mars/database/FASDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/FASDataManager;-><init>(Lcom/android/server/am/mars/database/FASDataManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    return-void
.end method
