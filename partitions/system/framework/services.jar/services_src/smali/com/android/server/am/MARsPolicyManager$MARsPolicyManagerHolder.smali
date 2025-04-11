.class public abstract Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/MARsPolicyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;-><init>(Lcom/android/server/am/MARsPolicyManager-IA;)V

    sput-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    return-void
.end method
