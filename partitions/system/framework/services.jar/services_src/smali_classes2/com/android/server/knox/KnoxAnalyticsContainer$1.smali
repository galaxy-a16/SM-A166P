.class public Lcom/android/server/knox/KnoxAnalyticsContainer$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public final synthetic val$component:Landroid/content/ComponentName;

.field public final synthetic val$isVisible:Z

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iput p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$userId:I

    iput-object p3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$component:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iget v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$userId:I

    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$component:Landroid/content/ComponentName;

    iget-boolean p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$isVisible:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->-$$Nest$mpostActiveUserChangeInternal(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V

    return-void
.end method
