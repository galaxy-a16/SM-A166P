.class public abstract Lcom/android/server/am/KillPolicyManager$KpmClassLazy;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/KillPolicyManager;

.field public static isinitKpmClass:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1947
    new-instance v0, Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    const/4 v0, 0x0

    .line 1948
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    return-void
.end method
