.class public Lcom/android/server/vcn/TelephonySubscriptionTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelephonySubscriptionTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    return-void
.end method
