.class public abstract Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;
.super Ljava/lang/Object;
.source "FilterChainFactory.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterChainFactory;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainFactory;-><init>(Lcom/android/server/am/mars/filter/FilterChainFactory-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    return-void
.end method
