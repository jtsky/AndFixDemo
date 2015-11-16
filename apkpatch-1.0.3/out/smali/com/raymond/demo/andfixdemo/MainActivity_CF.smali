.class public Lcom/raymond/demo/andfixdemo/MainActivity_CF;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        clazz = "com.raymond.demo.andfixdemo.MainActivity"
        method = "onCreate"
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/raymond/demo/andfixdemo/MainActivity_CF;->setContentView(I)V

    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/raymond/demo/andfixdemo/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/raymond/demo/andfixdemo/MainActivity_CF;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/raymond/demo/andfixdemo/MainActivity_CF;->a:Landroid/widget/TextView;

    const-string v1, "fix after"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public showToast(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/raymond/demo/andfixdemo/b/a;->showToast(Landroid/content/Context;)V

    return-void
.end method
