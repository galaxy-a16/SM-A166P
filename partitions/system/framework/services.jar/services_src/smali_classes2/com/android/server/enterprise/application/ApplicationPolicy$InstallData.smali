.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2956
    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;-><init>()V

    return-void
.end method
