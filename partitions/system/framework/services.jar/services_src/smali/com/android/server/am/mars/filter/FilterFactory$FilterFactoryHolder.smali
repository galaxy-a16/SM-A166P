.class public abstract Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterFactory;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/FilterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;-><init>(Lcom/android/server/am/mars/filter/FilterFactory-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    return-void
.end method
