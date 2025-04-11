.class public abstract Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;
.super Ljava/lang/Object;
.source "MARsExemptionManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsExemptionManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/MARsExemptionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsExemptionManager;-><init>(Lcom/android/server/am/mars/database/MARsExemptionManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;

    return-void
.end method
