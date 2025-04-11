.class public abstract Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsDBManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;-><init>(Lcom/android/server/am/mars/database/MARsDBManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    return-void
.end method
