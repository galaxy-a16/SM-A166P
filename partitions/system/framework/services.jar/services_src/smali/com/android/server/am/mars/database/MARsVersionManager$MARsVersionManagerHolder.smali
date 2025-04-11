.class public abstract Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsVersionManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/MARsVersionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    return-void
.end method
