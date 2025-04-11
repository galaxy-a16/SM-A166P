.class public abstract Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;
.super Ljava/lang/Object;
.source "BackupServiceFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;-><init>(Lcom/android/server/am/mars/filter/filter/BackupServiceFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    return-void
.end method
