.class public Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .locals 2

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .locals 0

    .line 173
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method
