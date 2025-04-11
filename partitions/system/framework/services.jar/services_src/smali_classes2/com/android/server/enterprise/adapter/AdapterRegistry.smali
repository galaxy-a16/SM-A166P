.class public abstract Lcom/android/server/enterprise/adapter/AdapterRegistry;
.super Ljava/lang/Object;
.source "AdapterRegistry.java"


# static fields
.field public static mAdapterHandles:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    return-void
.end method

.method public static getAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerAdapter(Ljava/lang/Class;Lcom/android/server/enterprise/adapter/IAdapterHandle;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
