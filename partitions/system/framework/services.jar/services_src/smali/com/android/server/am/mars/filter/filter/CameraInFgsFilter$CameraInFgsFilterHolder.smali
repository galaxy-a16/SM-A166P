.class public abstract Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;
.super Ljava/lang/Object;
.source "CameraInFgsFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;-><init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    return-void
.end method
