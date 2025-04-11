.class public Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# instance fields
.field public final mContainerId:I

.field public mIsUrlBlacklistUpdated:Z

.field public mIsUrlFilterReportUpdated:Z

.field public mIsUrlFilterStateUpdated:Z

.field public mUrlBlacklistAllAdmin:Ljava/util/List;

.field public mUrlFilterReportState:Z

.field public mUrlFilterStateCache:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 150
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mContainerId:I

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    return-void
.end method
