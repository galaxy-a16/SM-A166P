.class public abstract Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;
.super Ljava/lang/Object;
.source "ImportantRoleFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;-><init>(Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    return-void
.end method
