.class public abstract Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;
.super Ljava/lang/Object;
.source "AppCastFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AppCastFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    return-void
.end method
